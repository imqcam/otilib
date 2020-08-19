// ****************************************************************************************************
void mdnum2_get_active(mdnum2_t* num, imdir_t* list){
    
    ord_t ordi, ordj;
    bases_t* imdir;
    uint64_t i;

    for( ordi = 0; ordi < num->order; ordi++){

        for ( i = 0; i< num->p_nnz[ordi]; i++){

            imdir = dhelp_get_imdir( num->p_idx[ordi][i], ordi+1);

            for( ordj = 0; ordj<ordi+1; ordj++){

                // Activate the imaginary direction.
                list[imdir[ordj]-1] = 1;

            }

        }

    }

}
// ----------------------------------------------------------------------------------------------------