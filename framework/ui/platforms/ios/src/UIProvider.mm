

#import <UIKit/UIKit.h>
#import <bdn/ios/ButtonCore.hh>
#import <bdn/ios/CheckboxCore.hh>
#import <bdn/ios/ContainerViewCore.hh>
#import <bdn/ios/ListViewCore.hh>
#import <bdn/ios/ScrollViewCore.hh>
#import <bdn/ios/StackCore.hh>
#import <bdn/ios/SwitchCore.hh>
#import <bdn/ios/TextFieldCore.hh>
#import <bdn/ios/TextViewCore.hh>
#import <bdn/ios/UIProvider.hh>
#import <bdn/ios/WindowCore.hh>

#include <bdn/ViewCoreTypeNotSupportedError.h>

// TODO: Well, this obviously doesn't belong here. Get rid of it ASAP.
#include <iostream>

namespace bdn
{

    std::shared_ptr<UIProvider> getDefaultUIProvider() { return bdn::ios::UIProvider::get(); }
}

namespace bdn
{
    namespace ios
    {

        std::shared_ptr<UIProvider> UIProvider::get()
        {
            static std::shared_ptr<UIProvider> globalUIProvider = std::make_shared<UIProvider>();
            return globalUIProvider;
        };

        UIProvider::UIProvider()
        {
            // iOS uses DIPs for font sizes (although they call it "points").
            // So no conversion necessary

            _semDips = UIFont.systemFontSize;

            _layoutCoordinator = std::make_shared<LayoutCoordinator>();

            registerCoreType<ButtonCore, Button>();
            registerCoreType<ContainerViewCore, ContainerView>();
            registerCoreType<CheckboxCore, Checkbox>();
            registerCoreType<SwitchCore, Switch>();
            registerCoreType<TextViewCore, TextView>();
            registerCoreType<ScrollViewCore, ScrollView>();
            registerCoreType<WindowCore, Window>();
            registerCoreType<TextFieldCore, TextField>();
            registerCoreType<ListViewCore, ListView>();
            registerCoreType<StackCore, Stack>();
        }

        String UIProvider::getName() const { return "ios"; }
    }
}
