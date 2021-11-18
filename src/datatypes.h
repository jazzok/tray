#ifndef DATATYPES_H
#define DATATYPES_H
#include <QMetaType>
#include <QList>
#include <QString>
#include <QHash>
#include <QDateTime>
#include <QVariant>
#include <QColor>
#include <QPen>

//  Структура общих настроек
typedef struct TMSettings		        // настройки
{
    int					id;				// идентификатор терминала
    int                 mode;           // режим работы (0 - тест, 1 - работа, 2 - отладка)
} TTMSettings;
Q_DECLARE_METATYPE(TTMSettings);
Q_DECLARE_METATYPE(TTMSettings*);



#endif // DATATYPES_H
