# Created by: will
# $FreeBSD: mail/p5-Mail-Audit/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Mail-Audit
PORTVERSION=	2.2.27
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/.([0-9]+)$/\1/}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module for creating easy mail filters

RUN_DEPENDS=	p5-File-HomeDir>=0.61:${PORTSDIR}/devel/p5-File-HomeDir \
		p5-File-Tempdir>=0:${PORTSDIR}/devel/p5-File-Tempdir \
		p5-MIME-Tools>=0:${PORTSDIR}/mail/p5-MIME-Tools \
		p5-Mail-Tools>=0:${PORTSDIR}/mail/p5-Mail-Tools
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Mail::Audit.3 \
		Mail::Audit::KillDups.3 \
		Mail::Audit::MAPS.3 \
		Mail::Audit::MailInternet.3 \
		Mail::Audit::MimeEntity.3 \
    		Mail::Audit::Util::Tempdir.3 \
		Mail::Audit::Vacation.3

DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}
EXAMPLESDIR=	${PREFIX}/share/examples/${PKGNAMEPREFIX}${PORTNAME}
PORTDOCS=	Changes FAQ README
PORTEXAMPLES=	popread proc2ma

post-patch:
	@${REINPLACE_CMD} -i '' -e 's|/var/spool/mail|/var/mail|g' \
		${WRKSRC}/lib/Mail/Audit.pm

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	@${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}/${i}
.endfor
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
.for i in ${PORTEXAMPLES}
	@${INSTALL_SCRIPT} ${WRKSRC}/bin/${i}  ${EXAMPLESDIR}/${i}
.endfor
.endif

.include <bsd.port.mk>
