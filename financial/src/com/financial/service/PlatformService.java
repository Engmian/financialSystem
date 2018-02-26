package com.financial.service;

import com.financial.entity.Platform_data;
import org.apache.ibatis.annotations.Param;

/**
 *
 *
 */
public interface PlatformService {

    //全查
    Platform_data getPlatformDataList(@Param("pid") int pid);

}
