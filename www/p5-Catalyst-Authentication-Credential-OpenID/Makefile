# Created by: andrey@kostenko.name
# $FreeBSD: www/p5-Catalyst-Authentication-Credential-OpenID/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Catalyst-Authentication-Credential-OpenID
PORTVERSION=	0.17
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	OpenID credential for Catalyst::Plugin::Authentication framework

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Cache-FastMmap>=1.28:${PORTSDIR}/devel/p5-Cache-FastMmap \
		p5-Catalyst-Devel>=1:${PORTSDIR}/www/p5-Catalyst-Devel \
		p5-Catalyst-Plugin-Authentication>=0:${PORTSDIR}/www/p5-Catalyst-Plugin-Authentication \
		p5-Catalyst-Plugin-Session-State-Cookie>=0.08:${PORTSDIR}/www/p5-Catalyst-Plugin-Session-State-Cookie \
		p5-Catalyst-Plugin-Session-Store-FastMmap>=0.05:${PORTSDIR}/www/p5-Catalyst-Plugin-Session-Store-FastMmap \
		p5-Catalyst-Runtime>=0:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-HTML-Parser>=3:${PORTSDIR}/www/p5-HTML-Parser \
		p5-Net-OpenID-Consumer>=1.03:${PORTSDIR}/net/p5-Net-OpenID-Consumer \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Catalyst::Authentication::Credential::OpenID.3

post-patch:
	@${REINPLACE_CMD} -e '/Module::Install::AuthorTests/d' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
