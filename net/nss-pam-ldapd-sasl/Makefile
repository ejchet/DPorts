# Created by: rflynn@acsalaska.net
# $FreeBSD: net/nss-pam-ldapd-sasl/Makefile 315818 2013-04-16 15:11:33Z zi $

PORTNAME=	nss-pam-ldapd
PKGNAMESUFFIX=	-sasl

MAINTAINER=	zi@FreeBSD.org
COMMENT=	Advanced fork of nss_ldap with sasl support

LICENSE=	# pet portlint

OPTIONS_SET+=	SASL

SLAVE_PORT=	sasl # In case we come up with more
MASTERDIR=	${.CURDIR}/../nss-pam-ldapd

.include "${MASTERDIR}/Makefile"
