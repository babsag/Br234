.class public Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native function835()[B
.end method


# virtual methods
.method public a()Landroid/content/pm/Signature;
    .locals 2

    invoke-static {}, Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;->function835()[B

    move-result-object v0

    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, v0}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v1
.end method
