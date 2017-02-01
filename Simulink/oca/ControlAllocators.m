classdef ControlAllocators < Simulink.IntEnumType
    enumeration
        Inversion_CA(0)
        L1_OCA(1)
        LInf_OCA(2)
        LInf_Norm_OCA(3)
    end
end