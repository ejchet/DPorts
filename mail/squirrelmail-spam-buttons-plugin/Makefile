# Created by: Ion-Mihai "IOnut" Tetcu <itetcu@FreeBSD.org>
# $FreeBSD: mail/squirrelmail-spam-buttons-plugin/Makefile 321853 2013-06-27 06:48:43Z bapt $

PORTNAME=	spam-buttons
PORTVERSION=	2.3.1
DISTNAME=	${SQUIRREL_PLUGIN_NAME}-${PORTVERSION}-1.4.0
DIST_SUBDIR=	squirrelmail

MAINTAINER=	itetcu@FreeBSD.org
COMMENT=	Provides buttons with customizable action (for reporting spam, etc.)

USE_SM_COMPAT=	yes
USE_PERL5_RUN=	yes

SQUIRREL_PLUGIN_NAME=	${PORTNAME:S/-/_/}

.include "${.CURDIR}/../squirrelmail/bsd.squirrelmail.mk"

post-extract:
	@${MV} ${WRKSRC}/${_SMSRCDIR}/config_example.php ${WRKSRC}/${_SMSRCDIR}/config.sample.php
	@${RM} ${WRKSRC}/${_SMSRCDIR}/README
.ifdef NOPORTDOCS
	@${RM} -R ${WRKSRC}/${_SMSRCDIR}/docs
.else
	@${MV} ${WRKSRC}/${_SMSRCDIR}/docs ${WRKSRC}/${_SMSRCDIR}/doc
.endif

.include <bsd.port.mk>
