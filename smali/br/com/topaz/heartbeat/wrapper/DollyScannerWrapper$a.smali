.class Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/o/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;->b:Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
