# Created by: Qing Feng <qingfeng@douban.com>
# $FreeBSD: databases/beansdb/Makefile 323961 2013-07-30 12:34:07Z bapt $

PORTNAME=	beansdb
PORTVERSION=	0.5.3
CATEGORIES=	databases
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	qingfeng@douban.com
COMMENT=	Yet another distributed key-value storage system from Douban Inc

GNU_CONFIGURE=	yes
USE_CSTD=	gnu89
CFLAGS+=	${PTHREAD_LIBS}

MAN1=		beansdb.1
PLIST_FILES=	bin/beansdb

.include <bsd.port.mk>
