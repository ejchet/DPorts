# Created by: Patrick Li <pat@databits.net>
# $FreeBSD: astro/starplot/Makefile 316407 2013-04-24 07:35:40Z ak $

PORTNAME=	starplot
PORTVERSION=	0.95.5
PORTREVISION=	6
CATEGORIES=	astro
MASTER_SITES=	http://starplot.org/downloads/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	3-dimensional viewer for star charts

USES=        pathfix gettext
USE_GNOME=	gtk20
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		starconvert.1 starpkg.1 starplot.1

post-patch:
	@${REINPLACE_CMD} -e \
		's|$$(docdir)/examples|${EXAMPLESDIR}|g' ${WRKSRC}/configure

.include <bsd.port.mk>
