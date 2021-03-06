# Created by: Greg Larkin <glarkin@FreeBSD.org>
# $FreeBSD: ports/devel/p5-XML-Pastor/Makefile,v 1.5 2013/01/17 19:55:26 svnexp Exp $

PORTNAME=	XML-Pastor
PORTVERSION=	1.0.4
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	Generate Perl classes with XML bindings from a W3C XSD schema

BUILD_DEPENDS=	p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-Class-Data-Inheritable>=0:${PORTSDIR}/devel/p5-Class-Data-Inheritable \
		p5-Data-HashArray>=0:${PORTSDIR}/devel/p5-Data-HashArray \
		p5-File-chdir>=0:${PORTSDIR}/devel/p5-File-chdir \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-XML-LibXML>=0:${PORTSDIR}/textproc/p5-XML-LibXML
RUN_DEPENDS:=	${BUILD_DEPENDS}

WRKSRC=		${WRKDIR}/${PORTNAME}

MAN1=	pastorize.1

MAN3=	XML::Pastor.3 \
	XML::Pastor::Builtin.3 \
	XML::Pastor::Builtin::List.3 \
	XML::Pastor::Builtin::Numeric.3 \
	XML::Pastor::Builtin::Scalar.3 \
	XML::Pastor::Builtin::SimpleType.3 \
	XML::Pastor::Builtin::Union.3 \
	XML::Pastor::Builtin::base64Binary.3 \
	XML::Pastor::Builtin::boolean.3 \
	XML::Pastor::Builtin::date.3 \
	XML::Pastor::Builtin::dateTime.3 \
	XML::Pastor::Builtin::hexBinary.3 \
	XML::Pastor::ComplexType.3 \
	XML::Pastor::Generator.3 \
	XML::Pastor::Meta.3 \
	XML::Pastor::NodeArray.3 \
	XML::Pastor::Pastorize.3 \
	XML::Pastor::Schema::Attribute.3 \
	XML::Pastor::Schema::AttributeGroup.3 \
	XML::Pastor::Schema::ComplexType.3 \
	XML::Pastor::Schema::Documentation.3 \
	XML::Pastor::Schema::Element.3 \
	XML::Pastor::Schema::Group.3 \
	XML::Pastor::Schema::List.3 \
	XML::Pastor::Schema::Model.3 \
	XML::Pastor::Schema::NamespaceInfo.3 \
	XML::Pastor::Schema::Object.3 \
	XML::Pastor::Schema::Parser.3 \
	XML::Pastor::Schema::SimpleType.3 \
	XML::Pastor::Schema::Type.3 \
	XML::Pastor::Schema::Union.3 \
	XML::Pastor::SimpleType.3 \
	XML::Pastor::Stack.3 \
	XML::Pastor::Type.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
