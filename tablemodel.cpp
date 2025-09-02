#include "tablemodel.h"

QVariant TableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if(orientation == Qt::Horizontal && role == Qt::DisplayRole)
    {
        if(section == 0)
            return "name";
        else if(section == 1)
            return "color";
        else
            return " ";
    }
    return QVariant();
}
