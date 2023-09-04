.class public Lsun/security/pkcs/PKCS10Attribute;
.super Ljava/lang/Object;
.source "PKCS10Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# instance fields
.field protected attributeId:Lsun/security/util/ObjectIdentifier;

.field protected attributeValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lsun/security/pkcs/PKCS9Attribute;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 14
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 16
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 3
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 4
    new-instance v0, Lsun/security/pkcs/PKCS9Attribute;

    invoke-direct {v0, p1}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/DerValue;)V

    .line 5
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 6
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 9
    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    .line 11
    iput-object p2, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/pkcs/PKCS9Attribute;

    iget-object v1, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    iget-object v2, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0, p1}, Lsun/security/pkcs/PKCS9Attribute;->derEncode(Ljava/io/OutputStream;)V

    return-void
.end method

.method public getAttributeId()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeId:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attribute;->attributeValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
