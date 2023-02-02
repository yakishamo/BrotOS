#pragma once

#include <cstdio>
#include <array>

class Error {
 public:
  enum Code {
    kSuccess,
    kFull,
    kEmpty,
    kNoEnoughMemory,
    kIndexOutOfRange,
    kHostControllerNotHalted,
    kInvalidSlotID,
    kPortNotConnected,
    kInvalidEndpointNumber,
    kTransferRingNotSet,
    kAlreadyAllocated,
    kNotImplemented,
    kInvalidDescriptor,
    kBufferTooSmall,
    kUnknownDevice,
    kNoCorrespondingSetupStage,
    kTransferFailed,
    kInvalidPhase,
    kUnknownXHCISpeedID,
    kNoWaiter,
    kLastOfCode,  // この列挙子は常に最後に配置する
  };

 private:
  static constexpr std::array code_names_ {
    "kSuccess",
    "kFull",
    "kEmpty",
    "kNoEnoughMemory",
    "kIndexOutOfRange",
    "kHostControllerNotHalted",
    "kInvalidSlotID",
    "kPortNotConnected",
    "kInvalidEndpointNumber",
    "kTransferRingNotSet",
    "kAlreadyAllocated",
    "kNotImplemented",
    "kInvalidDescriptor",
    "kBufferTooSmall",
    "kUnknownDevice",
    "kNoCorrespondingSetupStage",
    "kTransferFailed",
    "kInvalidPhase",
    "kUnknownXHCISpeedID",
    "kNoWaiter",
  };

  static_assert(Error::Code::kLastOfCode == code_names_.size(),"");

 public:
  Error(Code code, const char* file, int line) : code_{code}, line_{line}, file_{file} {}

  Code Cause() const {
    return this->code_;
  }

  operator bool() const {
    return this->code_ != kSuccess;
  }

  const char* Name() const {
    return code_names_[static_cast<size_t>(this->code_)];
  }
	
  const char* File() const {
    return this->file_;
  }

  int Line() const {
    return this->line_;
  }

 private:
  Code code_;
  int line_;
  const char* file_;
};

#define MAKE_ERROR(code) Error((code), __FILE__, __LINE__)

// #@@range_begin(with_error)
template <class T>
struct WithError {
  T value;
  Error error;
};
// #@@range_end(with_error)
