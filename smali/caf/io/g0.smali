.class public final enum Lcaf/io/g0;
.super Ljava/lang/Enum;
.source "ValidationFailure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/g0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcaf/io/g0;

.field public static final enum b:Lcaf/io/g0;

.field public static final enum c:Lcaf/io/g0;

.field public static final enum d:Lcaf/io/g0;

.field public static final enum e:Lcaf/io/g0;

.field public static final enum f:Lcaf/io/g0;

.field public static final enum g:Lcaf/io/g0;

.field public static final enum h:Lcaf/io/g0;

.field public static final enum i:Lcaf/io/g0;

.field public static final enum j:Lcaf/io/g0;

.field public static final enum k:Lcaf/io/g0;

.field public static final enum l:Lcaf/io/g0;

.field public static final enum m:Lcaf/io/g0;

.field private static final synthetic n:[Lcaf/io/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcaf/io/g0;

    const-string v1, "SENSOR_LUMINOSITY_FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/g0;->a:Lcaf/io/g0;

    .line 2
    new-instance v1, Lcaf/io/g0;

    const-string v3, "SENSOR_ORIENTATION_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcaf/io/g0;->b:Lcaf/io/g0;

    .line 3
    new-instance v3, Lcaf/io/g0;

    const-string v5, "SENSOR_STABILITY_FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcaf/io/g0;->c:Lcaf/io/g0;

    .line 4
    new-instance v5, Lcaf/io/g0;

    const-string v7, "EYES_CLOSED_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcaf/io/g0;->d:Lcaf/io/g0;

    .line 5
    new-instance v7, Lcaf/io/g0;

    const-string v9, "FRAMING_FAILURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcaf/io/g0;->e:Lcaf/io/g0;

    .line 6
    new-instance v9, Lcaf/io/g0;

    const-string v11, "FACE_NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcaf/io/g0;->f:Lcaf/io/g0;

    .line 7
    new-instance v11, Lcaf/io/g0;

    const-string v13, "FACE_TOO_FAR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcaf/io/g0;->g:Lcaf/io/g0;

    .line 8
    new-instance v13, Lcaf/io/g0;

    const-string v15, "FACE_TOO_CLOSE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcaf/io/g0;->h:Lcaf/io/g0;

    .line 9
    new-instance v15, Lcaf/io/g0;

    const-string v14, "ANGULATION_X_FAILURE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcaf/io/g0;->i:Lcaf/io/g0;

    .line 10
    new-instance v14, Lcaf/io/g0;

    const-string v12, "ANGULATION_Y_FAILURE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcaf/io/g0;->j:Lcaf/io/g0;

    .line 11
    new-instance v12, Lcaf/io/g0;

    const-string v10, "ANGULATION_Z_FAILURE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcaf/io/g0;->k:Lcaf/io/g0;

    .line 12
    new-instance v10, Lcaf/io/g0;

    const-string v8, "MULTIPLE_FACES_FAILURE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcaf/io/g0;->l:Lcaf/io/g0;

    .line 13
    new-instance v8, Lcaf/io/g0;

    const-string v6, "LIVENESS_FAILURE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcaf/io/g0;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcaf/io/g0;->m:Lcaf/io/g0;

    const/16 v6, 0xd

    new-array v6, v6, [Lcaf/io/g0;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 14
    sput-object v6, Lcaf/io/g0;->n:[Lcaf/io/g0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
