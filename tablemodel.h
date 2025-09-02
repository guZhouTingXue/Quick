#ifndef TABLEMODEL_H
#define TABLEMODEL_H

#include <qqml.h>
#include <QAbstractTableModel>

class TableModel : public QAbstractTableModel
{
    Q_OBJECT
    QML_ELEMENT

public:
    TableModel(QObject *parent = nullptr) : QAbstractTableModel(parent) {
        ;
    }
    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;

    int rowCount(const QModelIndex & = QModelIndex()) const override
    {
        return m_row;
    }

    int columnCount(const QModelIndex & = QModelIndex()) const override
    {
        return 5;
    }

    QVariant data(const QModelIndex &index, int role) const override
    {
        switch (role) {
        case Qt::DisplayRole:
            if(index.column() == 4 )
                return "";

            if(index.row() > 2)
                return QString("%1, %2").arg(index.column()).arg(index.row())
                + "When a new column is flicked into view, TableView will determine its width by calling the columnWidthProvider.";
            else
                return QString("%1, %2").arg(index.column()).arg(index.row());
        default:
            break;
        }

        return QVariant();
    }

    QHash<int, QByteArray> roleNames() const override
    {
        return { {Qt::DisplayRole, "display"} };
    }

public slots:
    void appendRow() {
        beginInsertRows(QModelIndex(), m_row, m_row);
        m_row++;
        endInsertRows();
    }
private:
    size_t m_row = 2;
};

#endif // TABLEMODEL_H
