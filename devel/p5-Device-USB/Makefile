# Created by: Jason Bacon <jwbacon@tds.net>
# $FreeBSD: devel/p5-Device-USB/Makefile 316831 2013-04-29 16:43:05Z rene $

PORTNAME=	Device-USB
PORTVERSION=	0.35
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN \
		http://personalpages.tds.net/~jwbacon/Ports/distfiles/
PKGNAMEPREFIX=	p5-

MAINTAINER=	josh.carroll@gmail.com
COMMENT=	Perl wrapper for libusb

BUILD_DEPENDS=	p5-Inline>=0:${PORTSDIR}/devel/p5-Inline
RUN_DEPENDS=	p5-Inline>=0:${PORTSDIR}/devel/p5-Inline

MAKE_JOBS_UNSAFE=yes
PERL_CONFIGURE=	yes

MAN3=		Device::USB.3 \
		Device::USB::Bus.3 \
		Device::USB::DevConfig.3 \
		Device::USB::DevEndpoint.3 \
		Device::USB::DevInterface.3 \
		Device::USB::Device.3 \
		Device::USB::FAQ.3 \
		Device::dump_usb.3

.include <bsd.port.mk>
