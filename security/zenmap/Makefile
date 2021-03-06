# Created by: Daniel Roethlisberger <daniel@roe.ch>
# $FreeBSD: security/zenmap/Makefile 316464 2013-04-24 18:10:30Z ak $

PORTNAME=	zenmap
PORTVERSION=	6.25
PORTREVISION=	1
CATEGORIES=	security ipv6
MASTER_SITES=	http://nmap.org/dist/
DISTNAME=	nmap-${PORTVERSION}

MAINTAINER=	nemysis@gmx.ch
COMMENT=	GUI frontend for the Nmap scanning utility

LICENSE=	GPLv2

RUN_DEPENDS=	${LOCALBASE}/bin/nmap:${PORTSDIR}/security/nmap \
		${PYTHON_PACKAGENAMEPREFIX}sqlite3>0:${PORTSDIR}/databases/py-sqlite3

WRKSRC=		${WRKDIR}/${DISTNAME}/${PORTNAME}

USE_BZIP2=	yes
USE_GNOME=	pygtk2
USE_PYTHON=	-2.7
USE_PYDISTUTILS=yes

MLINKS=	zenmap.1 xnmap.1
MAN1=	zenmap.1 ndiff.1

OPTIONS_DEFINE=	NLS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
PLIST_SUB+=	NLS="@comment "
.endif

post-extract:
	@${RM} -f ${WRKSRC}/install_scripts/unix/su-to-zenmap.sh
	@${CP} -a ${FILESDIR}/pc-su ${WRKSRC}/install_scripts/unix/su-to-zenmap.sh

post-patch:
	@${REINPLACE_CMD} -e 's|su-to-zenmap.sh %F|su-to-zenmap.sh ${PORTNAME}|' \
		${WRKSRC}/install_scripts/unix/zenmap-root.desktop
	@${REINPLACE_CMD} \
		-e '/self.create_uninstaller/s|^|#|' ${WRKSRC}/setup.py
	@${REINPLACE_CMD} \
		-e 's|share/man/man1|man/man1|' ${WRKSRC}/../ndiff/setup.py
.if ! ${PORT_OPTIONS:MNLS}
	@${REINPLACE_CMD} -i '' '/locale_dir, mo_find, /d' ${WRKSRC}/setup.py
.endif

post-build:
	@(cd ${WRKSRC}/../ndiff \
		&& ${PYTHON_CMD} setup.py build)

post-install:
	${INSTALL_MAN} ${WRKSRC}/../docs/zenmap.1 ${MAN1PREFIX}/man/man1
	@(cd ${WRKSRC}/../ndiff \
		&& ${PYTHON_CMD} setup.py install --prefix ${PREFIX})

.include <bsd.port.mk>
