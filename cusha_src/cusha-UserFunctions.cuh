#ifndef	_CUSHA_USER_FUNCTIONS_H
#define	_CUSHA_USER_FUNCTIONS_H

#include "cusha-UserStructures.h"

void completeEntryCuSha(	unsigned int argcount,
							char** argvector,
							const int head_vertex,
							const int tail_vertex,
							Edge* edge_address,
							Vertex* vertex_address,
							Vertex_static* vertex_static_address,
							Vertex* tail_vertex_address,
							Vertex_static* tail_vertex_static_address,
							const int arbparam	);

void printVertexOutputCuSha(	const int vertexIndex,
								const Vertex resultVertex,
								FILE* outFile);

__device__ __host__ void init_compute_CuSha(	Vertex* local_V,
												Vertex* V_dynamic	);

__device__ __host__ void compute_CuSha(	Vertex* SrcV,
										Vertex_static* SrcV_static,
										Edge* E,
										Vertex* local_V	);

__device__ __host__ bool update_condition_CuSha(	Vertex* local_V,
													Vertex* V	);

#endif
