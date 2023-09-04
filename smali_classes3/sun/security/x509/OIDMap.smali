.class public Lsun/security/x509/OIDMap;
.super Ljava/lang/Object;
.source "OIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/OIDMap$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/OIDMap$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/x509/OIDMap$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lsun/security/x509/OIDMap;->a:[I

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/x509/OIDMap;->b:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/x509/OIDMap;->c:Ljava/util/Map;

    .line 4
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.SubjectKeyIdentifier"

    const-string v3, "sun.security.x509.SubjectKeyIdentifierExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.KeyUsage"

    const-string v3, "sun.security.x509.KeyUsageExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.PrivateKeyUsage"

    const-string v3, "sun.security.x509.PrivateKeyUsageExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.SubjectAlternativeName"

    const-string v3, "sun.security.x509.SubjectAlternativeNameExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.IssuerAlternativeName"

    const-string v3, "sun.security.x509.IssuerAlternativeNameExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.BasicConstraints"

    const-string v3, "sun.security.x509.BasicConstraintsExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.CRLNumber"

    const-string v3, "sun.security.x509.CRLNumberExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.CRLReasonCode"

    const-string v3, "sun.security.x509.CRLReasonCodeExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.NameConstraints"

    const-string v3, "sun.security.x509.NameConstraintsExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.PolicyMappings"

    const-string v3, "sun.security.x509.PolicyMappingsExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.AuthorityKeyIdentifier"

    const-string v3, "sun.security.x509.AuthorityKeyIdentifierExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-string v2, "x509.info.extensions.PolicyConstraints"

    const-string v3, "sun.security.x509.PolicyConstraintsExtension"

    invoke-static {v2, v1, v3}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_1

    .line 17
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    const-string v1, "x509.info.extensions.NetscapeCertType"

    const-string v2, "sun.security.x509.NetscapeCertTypeExtension"

    .line 18
    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.CertificatePolicies"

    const-string v2, "sun.security.x509.CertificatePoliciesExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.ExtendedKeyUsage"

    const-string v2, "sun.security.x509.ExtendedKeyUsageExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.InhibitAnyPolicy"

    const-string v2, "sun.security.x509.InhibitAnyPolicyExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.CRLDistributionPoints"

    const-string v2, "sun.security.x509.CRLDistributionPointsExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.CertificateIssuer"

    const-string v2, "sun.security.x509.CertificateIssuerExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.AuthorityInfoAccess"

    const-string v2, "sun.security.x509.AuthorityInfoAccessExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.IssuingDistributionPoint"

    const-string v2, "sun.security.x509.IssuingDistributionPointExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.DeltaCRLIndicator"

    const-string v2, "sun.security.x509.DeltaCRLIndicatorExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    const-string v1, "x509.info.extensions.FreshestCRL"

    const-string v2, "sun.security.x509.FreshestCRLExtension"

    invoke-static {v1, v0, v2}, Lsun/security/x509/OIDMap;->a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lsun/security/x509/OIDMap$a;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/x509/OIDMap$a;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lsun/security/x509/OIDMap;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lsun/security/x509/OIDMap;->c:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lsun/security/x509/OIDMap$a;

    invoke-direct {v1, p0, v0, p2}, Lsun/security/x509/OIDMap$a;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 3
    sget-object p2, Lsun/security/x509/OIDMap;->b:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    sget-object p1, Lsun/security/x509/OIDMap;->c:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Name already exists: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Object identifier already exists: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :catch_0
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Object identifier: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/OIDMap;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/security/x509/OIDMap$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsun/security/x509/OIDMap$a;->a()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 3
    sget-object v0, Lsun/security/x509/OIDMap;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/security/x509/OIDMap$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lsun/security/x509/OIDMap$a;->a()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lsun/security/x509/OIDMap;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/security/x509/OIDMap$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lsun/security/x509/OIDMap$a;->b:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 1

    .line 1
    sget-object v0, Lsun/security/x509/OIDMap;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/security/x509/OIDMap$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lsun/security/x509/OIDMap$a;->a:Lsun/security/util/ObjectIdentifier;

    :goto_0
    return-object p0
.end method
