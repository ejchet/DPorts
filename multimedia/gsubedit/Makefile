# Created by: ijliao
# $FreeBSD: multimedia/gsubedit/Makefile 315433 2013-03-28 03:28:30Z eadler $

PORTNAME=	GSubEdit
PORTVERSION=	0.4.p1
PORTREVISION=	10
CATEGORIES=	multimedia gnome
MASTER_SITES=	SF/${PORTNAME:tl}/${PORTNAME:tl}/0.4pre1
DISTNAME=	${PORTNAME:tl}-${PORTVERSION:S/.p/pre/}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GNOME Subtitle Editor is a tool for editing/converting video subtitles

USE_GMAKE=	yes
USES=        pathfix
USE_GNOME=	gnomeprefix gnomelibs
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--without-included-gettext

post-patch:
# CFLAGS safeness
# pthread safeness
	@${REINPLACE_CMD} -E -e 's|-g -O2||; \
		s|-lpthread|${PTHREAD_LIBS}|g' \
		${CONFIGURE_WRKSRC}/${CONFIGURE_SCRIPT} \
		${WRKSRC}/src/Makefile.in
# prefix safeness for docs
	@${REINPLACE_CMD} -E -e \
		's|^(gsubeditdocdir[[:space:]]*=).*$$|\1${DOCSDIR}|' \
		${WRKSRC}/Makefile.in
# prefix safeness for pixmaps
	@${REINPLACE_CMD} -E -e \
		's|^(packagepixmapsdir[[:space:]]*=).*$$|\1share/pixmaps/\$${PACKAGE}|' \
		${CONFIGURE_WRKSRC}/${CONFIGURE_SCRIPT} \
# install neither charset.alias nor locale.alias. Therefore, do not
# build distfiles' gettext
	@${REINPLACE_CMD} -E -e \
		's|^(SUBDIRS[[:space:]]*=.+)intl|\1|' \
		${WRKSRC}/Makefile.in
# do not install docs
.ifdef(NOPORTDOCS)
	@${REINPLACE_CMD} -E -e \
		's|^(install-data-am.+)install-gsubeditdocDATA|\1|' \
			${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
