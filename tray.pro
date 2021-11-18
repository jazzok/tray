QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(src/src.pri)
#   Debug
CONFIG(debug){
    message(***** Debug bulid!!! *****)
    linux:{
            MOC_DIR =		$$PWD/build/debug/unix/moc
            OBJECTS_DIR =	$$PWD/build/debug/unix/obj
            RCC_DIR =		$$PWD/build/debug/unix/res
            UI_DIR =            $$PWD/build/debug/unix/ui
            DESTDIR =		$$PWD/bin/debug/unix
    }
    mac:{
            MOC_DIR =		$$PWD/build/debug/mac/moc
            OBJECTS_DIR =	$$PWD/build/debug/mac/obj
            RCC_DIR =		$$PWD/build/debug/mac/res
            UI_DIR =            $$PWD/build/debug/mac/ui
            DESTDIR =		$$PWD/bin/debug/mac

    }
    windows: {
            MOC_DIR =           $$PWD/build/debug/windows/moc
            OBJECTS_DIR =       $$PWD/build/debug/windows/obj
            RCC_DIR =           $$PWD/build/debug/windows/res
            UI_HEADERS_DIR =    $$PWD/build/debug/windows/ui
            DESTDIR =           $$PWD/bin/debug/windows
    }
    else:{
            MOC_DIR =		$$PWD/build/debug/os/moc
            OBJECTS_DIR =	$$PWD/build/debug/os/obj
            RCC_DIR =		$$PWD/build/debug/os/res
            UI_DIR =            $$PWD/build/debug/os/ui
            DESTDIR =		$$PWD/bin/debug/os
    }
}

#   Release
CONFIG(release, debug|release){
    message(***** Release build!!! *****)
    linux:{
            MOC_DIR =		 $$PWD/build/release/unix/moc
            OBJECTS_DIR =	 $$PWD/build/release/unix/obj
            RCC_DIR =		 $$PWD/build/release/unix/res
            UI_DIR =         $$PWD/build/release/unix/ui
            DESTDIR =		 $$PWD/bin/release/unix
    }
    mac:{
            MOC_DIR =		 $$PWD/build/release/mac/moc
            OBJECTS_DIR =	 $$PWD/build/release/mac/obj
            RCC_DIR =		 $$PWD/build/release/mac/res
            UI_DIR =         $$PWD/build/debug/release/ui
            DESTDIR =		 $$PWD/bin/release/mac

    }
    else:{
            MOC_DIR =		 $$PWD/build/release/windows/moc
            OBJECTS_DIR =	 $$PWD/build/release/windows/obj
            RCC_DIR =		 $$PWD/build/release/windows/res
            UI_DIR =         $$PWD/build/release/windows/ui
            DESTDIR =		 $$PWD/bin/release/windows
    }
}

DISTFILES +=


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
