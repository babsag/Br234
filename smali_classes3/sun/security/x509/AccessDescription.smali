.class public final Lsun/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# static fields
.field public static final Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private a:I

.field private b:Lsun/security/util/ObjectIdentifier;

.field private c:Lsun/security/x509/GeneralName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 2
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_1

    .line 4
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_2

    .line 6
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_3

    .line 8
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x5
    .end array-data
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

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lsun/security/x509/AccessDescription;->a:I

    .line 3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    .line 5
    new-instance v0, Lsun/security/x509/GeneralName;

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object p1

    invoke-direct {v0, p1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/AccessDescription;->c:Lsun/security/x509/GeneralName;

    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 3
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->c:Lsun/security/x509/GeneralName;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    .line 4
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    instance-of v1, p1, Lsun/security/x509/AccessDescription;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lsun/security/x509/AccessDescription;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v2, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/AccessDescription;->c:Lsun/security/x509/GeneralName;

    .line 4
    invoke-virtual {p1}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object p1

    invoke-virtual {v2, p1}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public getAccessLocation()Lsun/security/x509/GeneralName;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->c:Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lsun/security/x509/AccessDescription;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->c:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/AccessDescription;->a:I

    .line 3
    :cond_0
    iget v0, p0, Lsun/security/x509/AccessDescription;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "caIssuers"

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "caRepository"

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "timeStamping"

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ocsp"

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->b:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n   accessMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n   accessLocation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/security/x509/AccessDescription;->c:Lsun/security/x509/GeneralName;

    .line 7
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
