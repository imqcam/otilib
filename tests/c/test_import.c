#include<oti/core.h>
#include<time.h>


int main(int argc, char *argv[]){
	// Declarations
	char data_folder[] = "/home/maristi7/coding/otilib/src/datagen/data"; // Useful for linux and macos distributions.
	dhelpl_t dhelpl; // Direction helper.


	// 
	printf("Testing data loading from precomputed arrays:\n");

	dhelp_load(data_folder, &dhelpl);
	
	printf("Successfuly loaded %d direction helpers.\n", dhelpl.ndh);
	
	// Print direction helpers.
	dhelp_printList(dhelpl);




	printf("Testing multiplication of directions.\n");

	imdir_t idx_res = 0;
	ord_t   ord_res = 0;
	dhelp_multDir( 15,4, 50,2 ,&idx_res, &ord_res , dhelpl);
	printf("Multiplying directions (15,4) x (50,2) = (%ld,%hhd)\n",idx_res,ord_res);



	// Check CPU time of the multiplication:
	int ordi = 4;
	int ordj = 6;
	ndir_t Ni = dhelpl.p_dh[ordi-1].Ndir;
	ndir_t Nj = dhelpl.p_dh[ordj-1].Ndir;
	clock_t start, end;
    double cpu_time_used;
    
    start = clock();
	for(imdir_t i = 0; i<Ni; i++){
		for(imdir_t j = 0; j<Nj; j++){

			dhelp_multDir( i,ordi, j, ordj, &idx_res, &ord_res, dhelpl);
			// printf("Multiplying directions (%ld,%hhd) x (%ld,%hhd) = (%ld,%hhd)\n",
			// 	i,ordi,j,ordj,idx_res,ord_res);

		}

	}
	end = clock();
    cpu_time_used = (((double) (end - start)) / CLOCKS_PER_SEC*1000000)/(Ni*Nj);

	printf("CPU time per multiplication: %g us\n",cpu_time_used);    

	// Test Combinatorics:
	printf("Computing combinatorics...\n");    
	printf("comb(%ld, %ld) = %ld \n",15,5,dhelp_comb(15,5));    
	printf("Total number of directions for nbases %ld, order %ld = %ld \n",15,5,dhelp_ndirTotal(15,5));  
	printf("Total number of directions for nbases %ld, order %ld = %ld \n",10,5,dhelp_ndirTotal(10,5));  
	printf("Extracted total num of dir for nbases %ld, order %ld = %ld \n",10,5,dhelp_extract_ndirTotal(10,5, dhelpl));  
	printf("Number of directions with order %ld for nbases %ld = %ld \n",5,15,dhelp_ndirOrder(15,5));    
	printf("Number of directions with order %ld for nbases %ld = %ld \n",5,4,dhelp_ndirOrder(5,4));    
	printf("Extracted Num of dir with order %ld for nbases %ld = %ld \n",5,4,dhelp_extract_ndirOrder(5,4,dhelpl));    


	printf("Unloading directions helpers\n");
	dhelp_free( &dhelpl );

	printf("Successfuly unloaded memory from direction helper\n");
	printf("Exiting now...\n");

	return 0;
}