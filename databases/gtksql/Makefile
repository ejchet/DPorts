# Created by: Andrey Zakhvatov
# $FreeBSD: databases/gtksql/Makefile 323088 2013-07-16 05:42:36Z ade $

PORTNAME=	gtksql
PORTVERSION=	0.4.5
CATEGORIES=	databases
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}-testing/${PORTNAME}-${PORTVERSION}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Graphical query tool for PostgreSQL/MySQL/SQLite

LICENSE=	GPLv2

LIB_DEPENDS=	avahi-client:${PORTSDIR}/net/avahi-app

GNU_CONFIGURE=	yes
USE_AUTOTOOLS=	libtool
USES=		pkgconfig
USE_GMAKE=	yes
USE_GNOME=	gtk20

MAN1=		${PORTNAME}.1
PORTDOCS=	AUTHORS ChangeLog NEWS README TODO

OPTIONS_MULTI=		DB
OPTIONS_MULTI_DB=	MYSQL PGSQL SQLITE3
OPTIONS_DEFAULT=	MYSQL PGSQL SQLITE3

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MMYSQL}
USE_MYSQL=	yes
.else
CONFIGURE_ARGS+=--without-mysql
.endif

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.if ${PORT_OPTIONS:MPGSQL}
USE_PGSQL=	yes
.else
CONFIGURE_ARGS+=--without-postgresql
.endif

.if ${PORT_OPTIONS:MSQLITE3}
LIB_DEPENDS+=	sqlite3:${PORTSDIR}/databases/sqlite3
.else
CONFIGURE_ARGS+=--without-sqlite
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/include/mysql|${LOCALBASE}/include/mysql|g' \
	-e 's|/usr/include/postgresql|${LOCALBASE}/include/postgresql/server|g' \
		${WRKSRC}/configure
	@${REINPLACE_CMD} 's|make|$$(MAKE)|' \
		${WRKSRC}/scintilla/Makefile.in
	@${REINPLACE_CMD} 's|-Os|${CFLAGS}|g' \
		${WRKSRC}/scintilla/gtk/makefile

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
