# New ports collection makefile for:		x11-toolkits/p5-Gtk2
# Date created:					Oct 27 2003
# Whom:						clsung@dragon2.net
#
# $FreeBSD: x11-toolkits/p5-Gtk2/Makefile 321371 2013-06-20 11:38:20Z swills $
#

PORTNAME=	Gtk2
PORTVERSION=	1.243
CATEGORIES=	x11-toolkits lang perl5
MASTER_SITES=	CPAN SF/${PORTNAME:tl}-perl/${PORTNAME}/${PORTVERSION}
PKGNAMEPREFIX=	p5-

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Perl module for Gtk+ 2.x graphical user interface library

BUILD_DEPENDS=	p5-ExtUtils-Depends>=0:${PORTSDIR}/devel/p5-ExtUtils-Depends \
		p5-ExtUtils-PkgConfig>=0:${PORTSDIR}/devel/p5-ExtUtils-PkgConfig \
		p5-Cairo>=0:${PORTSDIR}/graphics/p5-Cairo \
		p5-Pango>=0:${PORTSDIR}/x11-toolkits/p5-Pango \
		p5-Glib2>=0:${PORTSDIR}/devel/p5-Glib2
RUN_DEPENDS=	p5-Pango>=0:${PORTSDIR}/x11-toolkits/p5-Pango \
		p5-Cairo>=0:${PORTSDIR}/graphics/p5-Cairo \
		p5-Glib2>=0:${PORTSDIR}/devel/p5-Glib2

USE_GNOME=	gtk20 pango
PERL_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ENV+=	FORCE_GMAKE=yes
MAKE_ENV+=	LANG=C

post-install:
	@cd ${WRKSRC}/blib/man3 && ${FIND} * -name "*.3" | ${SED} \
		's,^,${MAN3PREFIX:S,^${PREFIX}/,,}/man/man3/,' >> ${TMPPLIST}

.include <bsd.port.mk>
