if(CLICK_MODE)
    STRING(REPLACE "/usr/" "/"  QT_IMPORTS_DIR  ${QT_IMPORTS_DIR})
    set(CMAKE_INSTALL_PREFIX /)
    set(CMAKE_INSTALL_BINDIR /)
        set(DATA_DIR /)
        set(EXEC "qmlscene $@ -I .${QT_IMPORTS_DIR} ${PODBIRD_DIR}/${MAIN_QML}")
        set(DESKTOP_DIR ${DATA_DIR})
        set(ICON ".${DATA_DIR}/${ICON}")
    install(FILES manifest.json DESTINATION ${CMAKE_INSTALL_PREFIX})
    install(DIRECTORY "app/graphics" DESTINATION ${DATA_DIR})
    install(FILES "${CMAKE_PROJECT_NAME}.json" DESTINATION ${DATA_DIR})
else(CLICK_MODE)
        set(DATA_DIR ${CMAKE_INSTALL_DATADIR}/${APP_NAME})
        set(EXEC "qmlscene $@ ${CMAKE_INSTALL_PREFIX}/${DATA_DIR}/qml/${MAIN_QML}")
        set(ICON "${CMAKE_INSTALL_PREFIX}/${DATA_DIR}/${ICON}")
        set(DESKTOP_DIR ${CMAKE_INSTALL_DATADIR}/applications)
endif(CLICK_MODE)

