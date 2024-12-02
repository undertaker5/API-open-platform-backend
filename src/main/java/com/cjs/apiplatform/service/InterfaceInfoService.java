package com.cjs.apiplatform.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cjs.apiplatform.model.entity.InterfaceInfo;

/**
* @author 0102
* @description 针对表【interface_info(接口信息表)】的数据库操作Service
* @createDate 2024-11-22 19:12:08
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);
}
