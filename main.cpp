#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "fileinfoutils.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    FileModel fileModel;
    FileInfoUtils fileInfoUtils;
    fileInfoUtils.setModel( &fileModel );

    engine.load(QUrl(QStringLiteral("main.qml")));
    engine.rootContext()->setContextProperty("idVideoFileListModel", &fileModel);
    engine.rootContext()->setContextProperty("fileInfoUtils", &fileInfoUtils);

//    QDeclarativeContext *ctxt = viewer.rootContext();
//    ctxt->setContextProperty("myModel", &model);
//![0]

//    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockLandscape);
//    viewer.setMainQmlFile(QLatin1String("main.qml"));
//    viewer.showExpanded();

    return app.exec();
}
