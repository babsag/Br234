.class Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$a;
.super Ljava/lang/Object;
.source "EmulatorDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;->detect(Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;

.field final synthetic b:Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;


# direct methods
.method constructor <init>(Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$a;->b:Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$a;->a:Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$a;->b:Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;->e(Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$a;->b:Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This System is Emulator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;->b(Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$a;->a:Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;->onResult(Z)V

    :cond_0
    return-void
.end method
