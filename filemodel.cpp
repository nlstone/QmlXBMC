#include "filemodel.h"

FileInfo::FileInfo(const QString &fileName, const QString &filePath, const QString &fileIconPath)
{
    _fileName = fileName;
    _fileIconPath = fileIconPath;
    _filePath = filePath;
}

QString FileInfo::content() const
{
    return _fileName;
}

QString FileInfo::iconPath() const
{
    return _fileIconPath;
}

QString FileInfo::filePath() const
{
    return _filePath;
}


FileModel::FileModel(QObject *parent) : QAbstractListModel( parent )
{

}

void FileModel::clear()
{
    beginRemoveRows(QModelIndex(), 0, rowCount());
    _fileList.clear();
    endRemoveRows();
}

void FileModel::addFileInfo(const FileInfo &fileInfo)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    _fileList << fileInfo;
    endInsertRows();
}

int FileModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)

    return _fileList.count();
}

QVariant FileModel::data(const QModelIndex &index, int role) const
{
    if (index.row() < 0 || index.row() > _fileList.count())
        return QVariant();

    const FileInfo &fileInfo = _fileList[index.row()];
    if (role == NameRole)
        return fileInfo.content();
    else if (role == IconRole)
        return fileInfo.iconPath();
    else if( role == FilePath )
        return fileInfo.filePath();

    return QVariant();
}

QString FileModel::getFilePathByIndexNum(const int index)
{
    if( index < 0 || index >= _fileList.count() )
        return QString();

    return _fileList[index].filePath();
}

QHash<int, QByteArray> FileModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NameRole] = "content";
    roles[IconRole] = "iconPath";
    roles[FilePath] = "filePath";

    return roles;
}
