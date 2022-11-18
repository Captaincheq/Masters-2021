
#include <thrust/device_vector.h>
#include <thrust/host_vector.h>

#include <rmm/device_buffer.hpp>
#include <rmm/device_uvector.hpp>

#include "DeviceVector.h"

using namespace ckks;

void DeviceVector::append(const DeviceVector& out) {
  size_t old_size = size();
  resize(size() + out.size());
  cudaMemcpyAsync(data() + old_size, out.data(), out.size() * sizeof(Dtype),
                  cudaMemcpyDefault, stream_);
}