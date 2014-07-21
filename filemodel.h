#ifndef FILEMODEL_H
#define FILEMODEL_H

#include <QAbstractListModel>
#include <QList>

class FileInfo
{
public:
    FileInfo(const QString &fileName, const QString &filePath, const QString &fileIconPath);

    QString content() const;
    QString iconPath() const;
    QString filePath() const;

private:
    QString _fileName;
    QString _filePath;
    QString _fileIconPath;
};

class FileModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum FileInfoRoles {
        NameRole = Qt::UserRole + 1,
        IconRole,
        FilePath
    };

    FileModel(QObject *parent = 0);

    void clear();

    void addFileInfo(const FileInfo &fileInfo);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;

    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

    QString getFilePathByIndexNum( const int index );

    QHash<int,QByteArray> roleNames() const;


private:
    QList<FileInfo> _fileList;
};

#endif // FILEMODEL_H



