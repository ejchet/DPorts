# Created by: Jui-Nan Lin <jnlin@csie.nctu.edu.tw>
# $FreeBSD: devel/p5-File-Tail-Dir/Makefile 314079 2013-03-13 12:44:03Z culot $

PORTNAME=	File-Tail-Dir
PORTVERSION=	0.14
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	File
PKGNAMEPREFIX=	p5-

MAINTAINER=	jnlin@csie.nctu.edu.tw
COMMENT=	Tail all matching files in a given set of directories

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-File-ChangeNotify>0:${PORTSDIR}/devel/p5-File-ChangeNotify \
		p5-Moose>0:${PORTSDIR}/devel/p5-Moose \
		p5-YAML>0:${PORTSDIR}/textproc/p5-YAML

PERL_CONFIGURE=	yes

MAN3=		File::Tail::Dir.3

.include <bsd.port.mk>
