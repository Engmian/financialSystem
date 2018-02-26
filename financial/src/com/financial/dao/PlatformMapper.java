package com.financial.dao;

import com.financial.entity.Platform_data;
import org.apache.ibatis.annotations.Param;

/**
 *
 *
 */
public interface PlatformMapper {

    //全查
    Platform_data getPlatformDataList(@Param("pid")int pid);

}
