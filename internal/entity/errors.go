package entity

import "errors"
// 消息实体
var (
	// ErrPermissionDenied 无权访问资源
	ErrPermissionDenied = errors.New("无权限访问！")
)
