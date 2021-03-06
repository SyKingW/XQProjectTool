Pod::Spec.new do |s|
    
    s.name         = "XQProjectTool"
    s.version      = "2.1"#版本号
    s.homepage     = "https://github.com/SyKingW/XQProjectTool"
    s.summary      = "一些项目里面要用到的工具"
    s.license      = "MIT"  #协议类型
    s.author       = { "王兴乾" => "1034439685@qq.com" }
    s.osx.deployment_target  = '10.13'
    s.ios.deployment_target  = "9.0" #平台及版本
    s.source       = { :git => "https://github.com/SyKingW/XQProjectTool.git" ,:tag => "#{s.version}"}   #工程地址及版本号
    s.requires_arc = true   #是否必须arc
    s.prefix_header_file = 'XQProjectTool/XQProjcetToolPrefixHeader.pch'
    
    
    #UITool模块
    s.subspec 'UITool' do |iphoneS|
        iphoneS.ios.deployment_target  = "9.0" #平台及版本
        iphoneS.source_files = 'XQProjectTool/UITool/**/*.{h,m,mm}'
        #关联资源
        #iphoneS.resources = 'XQProjectTool/UITool/**/*.{xib}'
        
        #iphoneS.dependency 'Masonry'
        #关联系统framework, 后缀不要
        iphoneS.frameworks = "UIKit", "AVFoundation"
        iphoneS.dependency "XQProjectTool/Tool"
    end
    
    
    #通用Tool模块
    s.subspec 'Tool' do |toolS|
        toolS.osx.deployment_target  = '10.13'
        toolS.ios.deployment_target  = "9.0" #平台及版本
        toolS.source_files = 'XQProjectTool/Tool/**/*.{h,m,mm}'
        
        toolS.ios.frameworks = "CoreTelephony"
        
    end
    
    
    #MacTool模块
    s.subspec 'MacTool' do |macS|
        macS.osx.deployment_target  = '10.13'
        macS.osx.source_files = 'XQProjectTool/MacTool/**/*.{h,m,mm}'
        
    end
    
    
    
end






