# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD: devel/p5-Data-TreeDumper-Renderer-GTK/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	Data-TreeDumper-Renderer-GTK
PORTVERSION=	0.02
PORTREVISION=	4
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	GTK renderer for Data::TreeDumper

BUILD_DEPENDS=	p5-Data-TreeDumper>=0:${PORTSDIR}/devel/p5-Data-TreeDumper \
		p5-Gtk2>=0:${PORTSDIR}/x11-toolkits/p5-Gtk2
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Data::TreeDumper::Renderer::GTK.3

.include <bsd.port.mk>
