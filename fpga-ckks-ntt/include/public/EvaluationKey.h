
#pragma once

#include <tuple>

#include "Define.h"
#include "DeviceVector.h"
#include "Parameter.h"

namespace ckks {

class EvaluationKey {
 public:
  EvaluationKey() = default;

  const DeviceVector& getAxDevice() const { return ax__; }
  const DeviceVector& getBxDevice() const { return bx__; }
  DeviceVector& getAxDevice() { return ax__; }
  DeviceVector& getBxDevice() { return bx__; }

 private:
  DeviceVector ax__;
  DeviceVector bx__;
};

}  // namespace ckks