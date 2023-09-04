.class public Lsun/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final AA_COMPROMISE:I = 0x8

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x7

.field public static final SUPERSEDED:I = 0x4

.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lsun/security/x509/GeneralNames;

.field private c:Lsun/security/x509/RDN;

.field private d:[Z

.field private e:Lsun/security/x509/GeneralNames;

.field private volatile f:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "key compromise"

    const-string v2, "CA compromise"

    const-string v3, "affiliation changed"

    const-string v4, "superseded"

    const-string v5, "cessation of operation"

    const-string v6, "certificate hold"

    const-string v7, "privilege withdrawn"

    const-string v8, "AA compromise"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/security/x509/DistributionPoint;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const-string v1, "Invalid encoding of DistributionPoint."

    const/16 v2, 0x30

    if-ne v0, v2, :cond_b

    .line 13
    :goto_0
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    iget-object v4, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    if-nez v4, :cond_2

    iget-object v4, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    if-nez v4, :cond_2

    .line 17
    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 21
    new-instance v3, Lsun/security/x509/GeneralNames;

    invoke-direct {v3, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x31

    .line 24
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 25
    new-instance v3, Lsun/security/x509/RDN;

    invoke-direct {v3, v0}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid DistributionPointName in DistributionPoint"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Duplicate DistributionPointName in DistributionPoint."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 29
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 30
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    if-nez v3, :cond_4

    const/4 v3, 0x3

    .line 31
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 32
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    goto/16 :goto_0

    .line 33
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Duplicate Reasons in DistributionPoint."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v3, 0x2

    .line 34
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 35
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 36
    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    if-nez v3, :cond_6

    .line 37
    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 38
    new-instance v3, Lsun/security/x509/GeneralNames;

    invoke-direct {v3, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    goto/16 :goto_0

    .line 39
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Duplicate CRLIssuer in DistributionPoint."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_8
    iget-object p1, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    if-nez p1, :cond_a

    iget-object p1, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    if-nez p1, :cond_a

    iget-object p1, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    if-eqz p1, :cond_9

    goto :goto_1

    .line 42
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "One of fullName, relativeName,  and crlIssuer has to be set"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_1
    return-void

    .line 43
    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fullName and crlIssuer may not both be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    .line 4
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    .line 5
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Lsun/security/x509/RDN;[ZLsun/security/x509/GeneralNames;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "relativeName and crlIssuer may not both be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    .line 9
    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    .line 10
    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    if-lez p0, :cond_0

    .line 1
    sget-object v0, Lsun/security/x509/DistributionPoint;->a:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    const/4 v2, 0x0

    const/16 v3, -0x80

    const/4 v4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    if-eqz v1, :cond_3

    .line 3
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 4
    iget-object v5, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    if-eqz v5, :cond_1

    .line 5
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 6
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v5}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 7
    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 8
    invoke-virtual {v1, v6, v5}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v5, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    if-eqz v5, :cond_2

    .line 10
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 11
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    invoke-virtual {v6, v5}, Lsun/security/x509/RDN;->a(Lsun/security/util/DerOutputStream;)V

    .line 12
    invoke-static {v3, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    .line 13
    invoke-virtual {v1, v6, v5}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 14
    :cond_2
    :goto_0
    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    .line 15
    invoke-virtual {v0, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 16
    :cond_3
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    if-eqz v1, :cond_4

    .line 17
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 18
    new-instance v5, Lsun/security/util/BitArray;

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    invoke-direct {v5, v6}, Lsun/security/util/BitArray;-><init>([Z)V

    .line 19
    invoke-virtual {v1, v5}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 20
    invoke-static {v3, v2, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    .line 21
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 22
    :cond_4
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_5

    .line 23
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 24
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v1}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    const/4 v2, 0x2

    .line 25
    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    .line 26
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_5
    const/16 v1, 0x30

    .line 27
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lsun/security/x509/DistributionPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lsun/security/x509/DistributionPoint;

    .line 3
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    iget-object v3, p1, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    invoke-static {v1, v3}, Lsun/security/x509/DistributionPoint;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    iget-object v3, p1, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    .line 4
    invoke-static {v1, v3}, Lsun/security/x509/DistributionPoint;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    iget-object v3, p1, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    .line 5
    invoke-static {v1, v3}, Lsun/security/x509/DistributionPoint;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    iget-object p1, p1, Lsun/security/x509/DistributionPoint;->d:[Z

    .line 6
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCRLIssuer()Lsun/security/x509/GeneralNames;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getFullName()Lsun/security/x509/GeneralNames;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getReasonFlags()[Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    return-object v0
.end method

.method public getRelativeName()Lsun/security/x509/RDN;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lsun/security/x509/DistributionPoint;->f:I

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4
    :cond_0
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lsun/security/x509/RDN;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6
    :cond_1
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8
    :cond_2
    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 10
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    add-int/2addr v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 11
    iput v0, p0, Lsun/security/x509/DistributionPoint;->f:I

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    const-string v2, "DistributionPoint:\n     "

    const-string v3, "\n"

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/x509/DistributionPoint;->b:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->c:Lsun/security/x509/RDN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    if-eqz v1, :cond_3

    const-string v1, "   ReasonFlags:\n"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->d:[Z

    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 9
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lsun/security/x509/DistributionPoint;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_4

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   CRLIssuer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->e:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
