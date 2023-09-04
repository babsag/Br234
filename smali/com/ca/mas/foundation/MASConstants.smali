.class public Lcom/ca/mas/foundation/MASConstants;
.super Ljava/lang/Object;
.source "MASConstants.java"


# static fields
.field public static final MAS_APPLICATION:I = 0x2

.field public static final MAS_BOUNDARY:Ljava/lang/String;

.field public static final MAS_GRANT_FLOW_CLIENT_CREDENTIALS:I = 0x1

.field public static final MAS_GRANT_FLOW_PASSWORD:I = 0x2

.field public static final MAS_STATE_NOT_CONFIGURED:I = 0x1

.field public static final MAS_STATE_NOT_INITIALIZED:I = 0x2

.field public static final MAS_STATE_STARTED:I = 0x3

.field public static final MAS_STATE_STOPPED:I = 0x4

.field public static final MAS_USER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boundary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mas/foundation/MASConstants;->MAS_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
