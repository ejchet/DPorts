# Created by: Chris D. Faulhaber <jedgar@fxp.org>
# $FreeBSD: graphics/gtkgraph/Makefile 324191 2013-08-03 13:44:00Z mat $

PORTNAME=	gtkgraph
PORTVERSION=	0.6.1
PORTREVISION=	12
CATEGORIES=	graphics math
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR= jedgar

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Graphing calculator using GTK+

USES=		gettext perl5
USE_GMAKE=	yes
USE_GNOME=	imlib
USE_PERL5=	build
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib"
CPPFLAGS+=	-I${LOCALBASE}/include

pre-patch:
	@${REINPLACE_CMD} -i '' -e 's|-O2|${CFLAGS}| ; \
		 s|DATADIRNAME=lib|DATADIRNAME=share|g' ${WRKSRC}/configure

.include <bsd.port.mk>
