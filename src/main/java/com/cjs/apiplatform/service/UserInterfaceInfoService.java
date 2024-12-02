package com.cjs.apiplatform.service;

import com.cjs.apiplatform.model.entity.UserInterfaceInfo;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author 0102
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service
* @createDate 2024-12-02 16:07:38
*/
public interface UserInterfaceInfoService extends IService<UserInterfaceInfo> {

    void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add);

    boolean invokeCount(long interfaceInfoId, long userId);
}
