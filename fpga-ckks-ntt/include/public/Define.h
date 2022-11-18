
#pragma once

#include <cstdint>
#include <string>
#include <chrono>
#include <iostream>
namespace ckks {

using word64 = uint64_t;
using word128 = __uint128_t;

void CudaNvtxStart(std::string msg = "");
void CudaNvtxStop();
void CudaHostSync();

}  // namespace ckks