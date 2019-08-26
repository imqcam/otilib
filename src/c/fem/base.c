
































// Memory management.


// ****************************************************************************************************
int64_t fem_unInitElement(elemProps_t* elem, ) {
    /*
    fem_initElement(uint64_t order, elemProps_t* elem) 

    Initialize the element Basis functions for the specified order of integration.

    INPUTS:

        -> order:    Order of polynomial.

        -> elem:   Address of the structure that holds the element information.


    OUTPUTS: 
        
        -> Assigns to elem the corresponding arrays with the correct data input.

        -> uint64_t error_code: Code of error, if any.

    */ 
    // ************************************************************************************************

    int64_t derId;

    if (elem->isInit != 0){
        // Get the integration points and integration weights.
    
        darr_free(&elem->p_intPoints);
        darr_free(&elem->p_intWeights);
        
        elem->nIntPts = 0;

        // Loop through all derivatives
        for(derId = 0; derId<elem->nder; derId++){
            
            // Allocate new array
            darr_free(&elem->p_evalBasis[derId]);
            feoarr_free(&elem->p_basis[ derId ]);

        }

        feoarr_free(&elem->J   );

        
        feoarr_free(&elem->Jinv);
        feoarr_free(&elem->p_detWeights);
        feoarr_free(&elem->Jdet);
        

        
        
        free_ptr((void**)&elem->p_evalBasis);
        free_ptr((void**)&elem->p_basis);
        elem->isInit       = 0; // Lower flag of initialization.
        elem->nDimAnalysis = 0;
        elem->otiorder     = 0;

        elem->p_evalBasis = NULL;
        elem->p_basis     = NULL;
    }
    
    

    return OTI_success;

} 
// ----------------------------------------------------------------------------------------------------



// ****************************************************************************************************
int64_t fem_initElement(uint64_t order, uint8_t otiorder, uint8_t nDimAnalysis, elemProps_t* elem, 
	dhelpl_t dhl) {
    /*
    fem_initElement(uint64_t order, elemProps_t* elem) 

    Initialize the element Basis functions for the specified order of integration.

    INPUTS:

        -> order:    Order of polynomial.

        -> elem:   Address of the structure that holds the element information.


    OUTPUTS: 
        
        -> Assigns to elem the corresponding arrays with the correct data input.

        -> uint64_t error_code: Code of error, if any.

    */ 
    // ************************************************************************************************

    int64_t derId;
    uint64_t basisId;

    // Check first if the element is already initialized.
    if( elem->isInit == 0 ){
   
    
        // Get the integration points and integration weights.
        fem_integrationPoints(order, elem->geomBase, &elem->p_intPoints, &elem->p_intWeights);
        
        elem->nIntPts = elem->p_intPoints.nrows;


        elem->otiorder = otiorder;
        elem->nDimAnalysis = nDimAnalysis;


        elem->p_evalBasis = (darr_t*  ) malloc( elem->nder*sizeof(darr_t  ) ) ;     
        elem->p_basis     = (feoarr_t*) malloc( elem->nder*sizeof(feoarr_t) ) ;

        if( elem->p_evalBasis == NULL || elem->p_basis == NULL ){
            printf("--- MemoryError ---\n");
            exit(1);
        }
        

        // Evaluate all basis functions at integration points.
        // Loop through all derivatives
        for(derId = 0; derId<elem->nder; derId++){

            // Allocate new array
            darr_createEmpty(&elem->p_evalBasis[derId], elem->nbasis, elem->nIntPts);

            // Loop through all basis functions.
            for(basisId = 0; basisId<elem->nbasis; basisId++){
                
                elem->f_basis(basisId, derId + derN, &elem->p_intPoints, NULL, &elem->p_evalBasis[derId]);
                

            }

            feoarr_zeros(&elem->p_basis[ derId ],
                    1,elem->nbasis,0,0,elem->nIntPts,elem->otiorder);


        }


        // Allocate space for Jacobian, its inverse and determinant.
        feoarr_zeros(&elem->J, MAX(elem->ndim,1),    elem->nDimAnalysis, 0, 0, elem->nIntPts, elem->otiorder);

        feoarr_zeros(&elem->Jinv,elem->nDimAnalysis, MAX(elem->ndim,1),  0, 0, elem->nIntPts, elem->otiorder);

        feoarr_zeros(&elem->Jdet,         1, 1, 0, 0, elem->nIntPts, elem->otiorder);
        
        feoarr_zeros(&elem->p_detWeights, 1, 1, 0, 0, elem->nIntPts, elem->otiorder);

        
        elem->isInit = 1; // Raise flag of initialization.

    }

    return OTI_success;

} 
// ----------------------------------------------------------------------------------------------------


