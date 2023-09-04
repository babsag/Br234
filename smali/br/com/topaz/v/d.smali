.class public final enum Lbr/com/topaz/v/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/v/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbr/com/topaz/v/d;

.field public static final enum c:Lbr/com/topaz/v/d;

.field public static final enum d:Lbr/com/topaz/v/d;

.field public static final enum e:Lbr/com/topaz/v/d;

.field public static final enum f:Lbr/com/topaz/v/d;

.field public static final enum g:Lbr/com/topaz/v/d;

.field public static final enum h:Lbr/com/topaz/v/d;

.field public static final enum i:Lbr/com/topaz/v/d;

.field public static final enum j:Lbr/com/topaz/v/d;

.field public static final enum k:Lbr/com/topaz/v/d;

.field private static final synthetic l:[Lbr/com/topaz/v/d;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbr/com/topaz/v/d;

    const-string v1, "MISSING_CONFIGURATION"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbr/com/topaz/v/d;->b:Lbr/com/topaz/v/d;

    new-instance v1, Lbr/com/topaz/v/d;

    const-string v3, "FEATURE_DISABLED"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v1, v3, v4, v5}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbr/com/topaz/v/d;->c:Lbr/com/topaz/v/d;

    new-instance v3, Lbr/com/topaz/v/d;

    const-string v5, "INVALID_PARAMS"

    const/4 v6, 0x2

    const/16 v7, 0x66

    invoke-direct {v3, v5, v6, v7}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbr/com/topaz/v/d;->d:Lbr/com/topaz/v/d;

    new-instance v5, Lbr/com/topaz/v/d;

    const-string v7, "MISSING_GPS_PERMISSION"

    const/4 v8, 0x3

    const/16 v9, 0x67

    invoke-direct {v5, v7, v8, v9}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbr/com/topaz/v/d;->e:Lbr/com/topaz/v/d;

    new-instance v7, Lbr/com/topaz/v/d;

    const-string v9, "MISSING_WIFI_PERMISSION"

    const/4 v10, 0x4

    const/16 v11, 0x68

    invoke-direct {v7, v9, v10, v11}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbr/com/topaz/v/d;->f:Lbr/com/topaz/v/d;

    new-instance v9, Lbr/com/topaz/v/d;

    const-string v11, "REACHED_TIMEOUT"

    const/4 v12, 0x5

    const/16 v13, 0x69

    invoke-direct {v9, v11, v12, v13}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbr/com/topaz/v/d;->g:Lbr/com/topaz/v/d;

    new-instance v11, Lbr/com/topaz/v/d;

    const-string v13, "LOCATION_SERVICE_DISABLED"

    const/4 v14, 0x6

    const/16 v15, 0x6a

    invoke-direct {v11, v13, v14, v15}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbr/com/topaz/v/d;->h:Lbr/com/topaz/v/d;

    new-instance v13, Lbr/com/topaz/v/d;

    const-string v15, "PROCESSING_IN_PROGRESS"

    const/4 v14, 0x7

    const/16 v12, 0x6b

    invoke-direct {v13, v15, v14, v12}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbr/com/topaz/v/d;->i:Lbr/com/topaz/v/d;

    new-instance v12, Lbr/com/topaz/v/d;

    const-string v15, "GPS_REQUEST_FAILURE"

    const/16 v14, 0x8

    const/16 v10, 0x6c

    invoke-direct {v12, v15, v14, v10}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lbr/com/topaz/v/d;->j:Lbr/com/topaz/v/d;

    new-instance v10, Lbr/com/topaz/v/d;

    const-string v15, "UNKNOWN_ERROR"

    const/16 v14, 0x9

    const/16 v8, 0xc7

    invoke-direct {v10, v15, v14, v8}, Lbr/com/topaz/v/d;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbr/com/topaz/v/d;->k:Lbr/com/topaz/v/d;

    const/16 v8, 0xa

    new-array v8, v8, [Lbr/com/topaz/v/d;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lbr/com/topaz/v/d;->l:[Lbr/com/topaz/v/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbr/com/topaz/v/d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/v/d;
    .locals 1

    const-class v0, Lbr/com/topaz/v/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/v/d;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/v/d;
    .locals 1

    sget-object v0, Lbr/com/topaz/v/d;->l:[Lbr/com/topaz/v/d;

    invoke-virtual {v0}, [Lbr/com/topaz/v/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/v/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/v/d;->a:I

    return v0
.end method
