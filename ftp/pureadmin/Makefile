# Created by: ijliao
# $FreeBSD: ftp/pureadmin/Makefile 316407 2013-04-24 07:35:40Z ak $

PORTNAME=	pureadmin
PORTVERSION=	0.4
PORTREVISION=	6
CATEGORIES=	ftp
MASTER_SITES=	SF/purify/Default/${PORTVERSION}

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	Management utility for the PureFTPd

USES=		pkgconfig gettext
USE_GNOME=	gnomehack libglade2
USE_FAM=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
INSTALLS_ICONS=	yes

CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

PORTDOCS=	index.txt introduction.txt main_window.txt \
		preferences.txt user_manager.txt

pre-configure:
	@${REINPLACE_CMD} -e '/install-data-local:/s|install-docs||' ${WRKSRC}/Makefile.in

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}/docs/ && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}/
.endif

.include <bsd.port.mk>
