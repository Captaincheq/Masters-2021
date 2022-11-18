
#include "Define.h"
#include "nvToolsExt.h"

namespace ckks {

void CudaNvtxStart(std::string msg) { nvtxRangePushA(msg.c_str()); }
void CudaNvtxStop() { nvtxRangePop(); }
void CudaHostSync() { cudaDeviceSynchronize(); }

}