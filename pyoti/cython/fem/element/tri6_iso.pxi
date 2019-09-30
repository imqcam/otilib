








# Second order 6 node triangular Finite Element. 
# Isoparametric formulation.



// ****************************************************************************************************
int64_t fem_basisFunctions_N_TriangP2_2Diso(int64_t basisId, int64_t basisDer, darr_t* coords,   
                                              void* other_data, darr_t* evalBasis){
    /*
    fem_basisFunctions_N_TriangP1_2Diso(  basisId,  basisDer,  ncoords, 
                                            ndim,     coords,    other_data,
                                            evalBasis) 

    Definition of basis functions for the P1 2D element.

    
    NODE NUMBERING:

    (2)
     * *
     *   * 
    (5)   (4) 
     *       *
     *         *
    (0)* *(3)* *(1)


    INPUTS:

        -> basisId:    Id of the basis to be evaluated. 
                       For this case, id = 0,1,2,3,4 or 5. (N1, N2, N3, N4, N5, N6)


        -> basisDer:  Id of the basis derivative to be computed. Possible values are:
                        derN   , derNaa , derNaz
                        derNa  , derNbb , derNbz
                        derNb  , derNcc , 
                        derNz  , derNab ,    

        -> ncoords:    Number of coordinates to be evaluated.

        -> ndim:       Number of dimensions of the evaluation. (might work for more general functions)
        
        -> coords:     Pointer with the data in the transformed space:
                       [ [ xi_1,      eta_1      ],
                         [ xi_2,      eta_2      ],
                                   ...             
                         [ xi_ncoord, eta_ncoord ] ]

        -> other_data: Data that might be available for other computations.
    
    OUTPUTS: 

        -> evalBasis: Pointer with the result.

        -> uint64_t error_code: Code of error if any.



    */ 
    // ************************************************************************************************

    uint64_t i, ncoords=coords->nrows;
    double xi, eta, evalBasis_i=0.0;
    
    if ( basisId > 5 ){
        return OTI_FEM_InvalidBaseId;
    }

    

    for(i=0; i<ncoords; i++){
        
        xi  = darr_get_item_ij(coords,i,0);
        eta = darr_get_item_ij(coords,i,1);
        
        // Detect which basis function is being computed: N1, N2, or N3.
        if (basisId == 0){
            // N1
            // Detect which derivative is being computed
            if (basisDer == derN){
                
                evalBasis_i = 2.*pow(eta,2.)+4.*eta*xi - 3.*eta + 2.*pow(xi,2.)-3.*xi+ 1.; 

            } else if (basisDer == derNa){

                evalBasis_i = 4.*eta + 4.*xi - 3.; 

            } else if (basisDer == derNb){

                evalBasis_i = 4.*eta + 4.*xi - 3.; 

            } else if (basisDer == derNaa){

                evalBasis_i = 4.; 

            }  else if (basisDer == derNab){

                evalBasis_i = 4.; 

            }  else if (basisDer == derNbb){

                evalBasis_i = 4.; 

            } else {

                evalBasis_i = 0.0;  // dN1/d everything else.
                
            }

        } else if (basisId == 1){
            // N2
            // Detect which derivative is being computed
            if (basisDer == derN){

                evalBasis_i = 2.*pow(xi,2.0)-xi; // N2 = xi

            }else if (basisDer == derNa){

                evalBasis_i = 4.*xi-1.; 

            } else if (basisDer == derNaa){

                evalBasis_i = 4.; 

            } else{

                evalBasis_i = 0.0;

            }

        } else if (basisId == 2){
            // N3
            // Detect which derivative is being computed
            if (basisDer == derN){

                evalBasis_i = 2.*pow(eta,2.0)-eta; 

            }else if (basisDer == derNb){

                evalBasis_i = 4.*eta-1.; 

            } else if (basisDer == derNbb){

                evalBasis_i = 4.; 

            } else{

                evalBasis_i = 0.0; // dN1/deta = 0.0 and everything else (if asked).

            }

        } else if (basisId == 3){
            // N4
            // Detect which derivative is being computed
            if (basisDer == derN){

                evalBasis_i = - 4.*eta*xi - 4.*pow(xi,2.0) + 4.*xi; 

            }else if (basisDer == derNa){

                evalBasis_i =  - 4.*eta - 8.*xi + 4.; 

            } else if (basisDer == derNaa){

                evalBasis_i = -8.; 

            }else if (basisDer == derNb){

                evalBasis_i = - 4.*xi; 

            } else if (basisDer == derNab){

                evalBasis_i = -4.; 

            } else{

                evalBasis_i = 0.0; 

            }

        } else if (basisId == 4){
            // N5
            // Detect which derivative is being computed
            if (basisDer == derN){

                evalBasis_i = 4.*eta*xi ; 

            }else if (basisDer == derNa){

                evalBasis_i =  4.*eta ; 

            }else if (basisDer == derNb){

                evalBasis_i = 4.*xi; 

            } else if (basisDer == derNab){

                evalBasis_i = 4.; 

            } else{

                evalBasis_i = 0.0; 

            }

        }else if (basisId == 5){
            // N6
            // Detect which derivative is being computed
            if (basisDer == derN){

                evalBasis_i = - 4.*eta*xi - 4.*pow(eta,2.0) + 4.*eta; 

            }else if (basisDer == derNb){

                evalBasis_i =  - 4.*xi - 8.*eta + 4.; 

            } else if (basisDer == derNbb){

                evalBasis_i = -8.; 

            }else if (basisDer == derNa){

                evalBasis_i = - 4.*eta; 

            } else if (basisDer == derNab){

                evalBasis_i = -4.; 

            } else{

                evalBasis_i = 0.0; 

            }

        }  

        darr_set_item_ij( evalBasis_i, basisId, i, evalBasis);

    }

    return OTI_success;

}   
// ----------------------------------------------------------------------------------------------------
