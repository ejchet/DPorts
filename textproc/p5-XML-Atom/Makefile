# Created by: Cheng-Lung Sung <clsung@dragon2.net>
# $FreeBSD: textproc/p5-XML-Atom/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	XML-Atom
PORTVERSION=	0.41
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 modules for Atom feed and API implementation

BUILD_DEPENDS=	p5-Class-Data-Inheritable>=0:${PORTSDIR}/devel/p5-Class-Data-Inheritable \
		p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-TimeZone>=0:${PORTSDIR}/devel/p5-DateTime-TimeZone \
		p5-Digest-SHA1>=0:${PORTSDIR}/security/p5-Digest-SHA1 \
		p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-LWP-Authen-Wsse>=0:${PORTSDIR}/www/p5-LWP-Authen-Wsse \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-XML-LibXML>=1.69:${PORTSDIR}/textproc/p5-XML-LibXML \
		p5-XML-XPath>=0:${PORTSDIR}/textproc/p5-XML-XPath \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		XML::Atom.3 \
		XML::Atom::Client.3 \
		XML::Atom::Entry.3 \
		XML::Atom::Feed.3 \
		XML::Atom::Person.3 \
		XML::Atom::Server.3 \
		XML::Atom::Util.3

.include <bsd.port.mk>
