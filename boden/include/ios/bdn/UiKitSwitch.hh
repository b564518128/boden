#ifndef BDN_UiKitSwitch_HH_
#define BDN_UiKitSwitch_HH_

#import <bdn/UiKitView.hh>
#import <bdn/UiKitWindow.hh>

#include <bdn/ISwitch.h>

namespace bdn
{

class UiKitSwitch : public UiKitView, BDN_IMPLEMENTS ISwitch
{
public:
    UiKitSwitch(UiKitWindow* pParent, const String& label);
    
    Property<String>& label() override
    {
        return *_pLabel;
    }
    
    ReadProperty<String>& label() const override
    {
        return *_pLabel;
    }
    
protected:
    class LabelDelegate : public Base, BDN_IMPLEMENTS PropertyWithMainThreadDelegate<String>::IDelegate
    {
    public:
        LabelDelegate(UILabel* label)
        {
            _label = label;
        }
        
        void	set(const String& val)
        {
            _label.text = [NSString stringWithCString:val.asUtf8Ptr() encoding:NSUTF8StringEncoding];
        }
        
        String get() const
        {
            const char* utf8 = [_label.text cStringUsingEncoding:NSUTF8StringEncoding];
            
            return String(utf8);
        }
        
        UILabel* _label;
    };


    UILabel*  _label;
    UISwitch* _switch;
    
    
    P< PropertyWithMainThreadDelegate<String> > _pLabel;
    
};


}


#endif
