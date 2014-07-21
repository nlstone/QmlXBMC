#include "fileinfoutils.h"
#include <QDir>
#include <QDebug>

FileInfoUtils::FileInfoUtils(QObject *parent) :
    QObject(parent), _fileModel( 0 )
{
}

bool FileInfoUtils::getSubFileModel(const QString &dirPath)
{
    qDebug() << Q_FUNC_INFO << "dirPath is: " << dirPath;

    if( !QFile::exists( dirPath ) )
    {
        qDebug() << "Dir: " << dirPath << " is not exist.";

        return false;
    }

    if( !_fileModel )
        return false;

    QDir rootDir( dirPath );
    rootDir.setFilter( QDir::Dirs | QDir::Files | QDir::NoDotAndDotDot );
    QFileInfoList dirInfos = rootDir.entryInfoList();

    _fileModel->clear();

    // Add return item
    _fileModel->addFileInfo( FileInfo("...", dirPath, "media/DefaultFolderBack.png"));
    foreach (const QFileInfo &dirInfo, dirInfos)
    {
        QString fileName = dirInfo.fileName();
        QString filePath = dirInfo.filePath();

        if( dirInfo.isDir() )
        {
            _fileModel->addFileInfo(FileInfo(fileName, filePath, "media/DefaultFolder.png"));
        }
        else
        {
            QString extFileName = fileName.section('.', -1);
            if( extFileName.compare("mpg", Qt::CaseInsensitive) == 0 ||
                extFileName.compare("avi", Qt::CaseInsensitive) == 0 ||
                extFileName.compare("mp4", Qt::CaseInsensitive) == 0 ||
                extFileName.compare("mkv", Qt::CaseInsensitive) == 0 ||
                extFileName.compare("rmvb", Qt::CaseInsensitive) == 0)
            {
                _fileModel->addFileInfo(FileInfo(fileName, filePath, "media/DefaultVideoCover.png"));
            }
            else
            {
                _fileModel->addFileInfo(FileInfo(fileName, filePath, "media/DefaultFile.png"));
            }
        }
    }

    return true;
}

bool FileInfoUtils::getSubFileModel( const int index )
{
    QString filePath = _fileModel->getFilePathByIndexNum( index );
    if( index == 0 )
    {
        if( filePath.contains("/") )
        {
            filePath = filePath.section("/", 0, -2);
        }
    }

    return getSubFileModel( filePath );
}

void FileInfoUtils::setModel(FileModel *fileModel)
{
    _fileModel = fileModel;
}
