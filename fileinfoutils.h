#ifndef FILEINFOUTILS_H
#define FILEINFOUTILS_H

#include <QObject>
#include "filemodel.h"

class FileInfoUtils : public QObject
{
    Q_OBJECT
public:
    explicit FileInfoUtils(QObject *parent = 0);
    Q_INVOKABLE bool getSubFileModel( const QString &dirPath );
    Q_INVOKABLE bool getSubFileModel( const int index );

    void setModel( FileModel *fileModel );

signals:

public slots:

private:
    FileModel *_fileModel;

};

#endif // FILEINFOUTILS_H
