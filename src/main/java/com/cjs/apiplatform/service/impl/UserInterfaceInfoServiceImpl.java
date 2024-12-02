package com.cjs.apiplatform.service.impl;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cjs.apiplatform.common.ErrorCode;
import com.cjs.apiplatform.exception.BusinessException;
import com.cjs.apiplatform.model.entity.InterfaceInfo;
import com.cjs.apiplatform.model.entity.UserInterfaceInfo;
import com.cjs.apiplatform.service.UserInterfaceInfoService;
import com.cjs.apiplatform.mapper.UserInterfaceInfoMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
* @author 0102
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service实现
* @createDate 2024-12-02 16:07:38
*/
@Service
public class UserInterfaceInfoServiceImpl extends ServiceImpl<UserInterfaceInfoMapper, UserInterfaceInfo>
    implements UserInterfaceInfoService{

    @Override
    public void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add) {
        if (userInterfaceInfo == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        //todo

        // 创建时，所有参数必须非空
        if (add) {
            if (userInterfaceInfo.getInterfaceInfoId() <=0 || userInterfaceInfo.getUserId() <=0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户或接口不存在");
            }
        }
        if (userInterfaceInfo.getLeftNum() < 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "剩余次数不能小于0");
        }
    }

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {
        if (interfaceInfoId <= 0 || userId <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"用户或接口不存在");
        }
        // todo 事物锁

        UpdateWrapper<UserInterfaceInfo> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("user_id", userId);
        updateWrapper.eq("interface_info_id", interfaceInfoId);
//        updateWrapper.gt("left_num", 0);
        updateWrapper.setSql("left_num = left_num - 1, total_num = total_num + 1");
        return this.update(updateWrapper);
    }
}




