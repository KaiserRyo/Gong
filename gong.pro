TEMPLATE = app
TARGET = gong

CONFIG += qt warn_on debug_and_release cascades
LIBS   += -lOpenAL -lalut -lasound

INCLUDEPATH += ../src
SOURCES += ../src/*.cpp 
HEADERS += ../src/*.h 

device {
	CONFIG(release, debug|release) {		
		DESTDIR = o.le-v7		
	} 
	CONFIG(debug, debug|release) {
		DESTDIR = o.le-v7-g
	}
}

simulator {
	CONFIG(release, debug|release) {
		DESTDIR = o
	} 
	CONFIG(debug, debug|release) {
		DESTDIR = o-g
	}
}

OBJECTS_DIR = $${DESTDIR}/.obj
MOC_DIR = $${DESTDIR}/.moc
RCC_DIR = $${DESTDIR}/.rcc
UI_DIR = $${DESTDIR}/.ui

