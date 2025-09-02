#include "tablemodel.h"

QVariant TableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if(orientation == Qt::Horizontal && role == Qt::DisplayRole)
    {
        return QString("column %0").arg(section);
    }
    return QVariant();
}
