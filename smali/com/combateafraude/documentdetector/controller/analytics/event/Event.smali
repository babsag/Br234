.class public final enum Lcom/combateafraude/documentdetector/controller/analytics/event/Event;
.super Ljava/lang/Enum;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/controller/analytics/event/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum CAMERA_START_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum CAPTURE_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum CAPTURE_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum CAPTURE_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum CAPTURE_TAKEN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum DEVICE_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum EMULATOR_DETECTED_ON_METHOD:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum MEMORY_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum NETWORK_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum NETWORK_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum PERMISSION_DENIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum PERMISSION_GRANTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum PERMISSION_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum PREVIEW_ACCEPTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum PREVIEW_REJECTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum PREVIEW_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum PROVIDER_INSTALL_FAILURE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum QUALITY_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum SDK_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum SDK_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum SERVER_DOWN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum SERVER_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum TOKEN_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public static final enum UPLOAD_IMAGE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;


# instance fields
.field private final eventDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventType:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    sget-object v7, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v1, "SDK_STARTED"

    const/4 v2, 0x0

    const-string v4, "SDK_STARTED"

    const-string v5, "SDK has started"

    move-object v0, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SDK_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 2
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "NETWORK_INFO"

    const/4 v2, 0x1

    const-string v4, "NETWORK_INFO"

    const-string v5, "Network context information."

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 3
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "PERMISSION_REQUESTED"

    const/4 v2, 0x2

    const-string v4, "PERMISSION_REQUESTED"

    const-string v5, "Permission has been requested"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 4
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "PERMISSION_GRANTED"

    const/4 v2, 0x3

    const-string v4, "PERMISSION_GRANTED"

    const-string v5, "Permission granted"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_GRANTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 5
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "PERMISSION_DENIED"

    const/4 v2, 0x4

    const-string v4, "PERMISSION_DENIED"

    const-string v5, "Permission denied"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_DENIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 6
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "CAPTURE_REQUESTED"

    const/4 v2, 0x5

    const-string v4, "CAPTURE_REQUESTED"

    const-string v5, "Capture has been requested"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 7
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "CAPTURE_TAKEN"

    const/4 v2, 0x6

    const-string v4, "CAPTURE_TAKEN"

    const-string v5, "Capture has been taken"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_TAKEN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 8
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "CAPTURE_FINISHED"

    const/4 v2, 0x7

    const-string v4, "CAPTURE_FINISHED"

    const-string v5, "Capture has been finished"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 9
    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    sget-object v14, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v9, "CAPTURE_FAILED"

    const/16 v10, 0x8

    const-string v12, "CAPTURE_FAILED"

    const-string v13, "Capture has failed"

    move-object v8, v0

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 10
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "CAPTURE_INVALID"

    const/16 v2, 0x9

    const-string v4, "CAPTURE_INVALID"

    const-string v5, "Invalid capture has been detected"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 11
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "SDK_FINISHED"

    const/16 v2, 0xa

    const-string v4, "SDK_FINISHED"

    const-string v5, "SDK has finished"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 12
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "PREVIEW_STARTED"

    const/16 v2, 0xb

    const-string v4, "PREVIEW_STARTED"

    const-string v5, "Preview has been started"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 13
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "PREVIEW_ACCEPTED"

    const/16 v2, 0xc

    const-string v4, "PREVIEW_ACCEPTED"

    const-string v5, "Preview accepted"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_ACCEPTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 14
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "PREVIEW_REJECTED"

    const/16 v2, 0xd

    const-string v4, "PREVIEW_REJECTED"

    const-string v5, "Preview rejected"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_REJECTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 15
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "DEVICE_INFO"

    const/16 v2, 0xe

    const-string v4, "DEVICE_INFO"

    const-string v5, "Get device\'s build.prop info"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->DEVICE_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 16
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "EMULATOR_DETECTED_ON_METHOD"

    const/16 v2, 0xf

    const-string v4, "EMULATOR_DETECTED_ON_METHOD"

    const-string v5, "Get which method the emulator was detected"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->EMULATOR_DETECTED_ON_METHOD:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 17
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "GOT_IMAGE_UPLOAD_LINKS"

    const/16 v2, 0x10

    const-string v4, "GOT_IMAGE_UPLOAD_LINKS"

    const-string v5, "SDK has the link to upload the image"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 18
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "TOKEN_VERIFIED"

    const/16 v2, 0x11

    const-string v4, "TOKEN_VERIFIED"

    const-string v5, "SDK has verified the used token"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->TOKEN_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 19
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "QUALITY_VERIFIED"

    const/16 v2, 0x12

    const-string v4, "QUALITY_VERIFIED"

    const-string v5, "The image\'s quality has been verified successfully"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->QUALITY_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 20
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "MEMORY_INFO"

    const/16 v2, 0x13

    const-string v4, "MEMORY_INFO"

    const-string v5, "Get device\'s memory info. Total, free and used"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->MEMORY_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 21
    new-instance v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v1, "UPLOAD_IMAGE"

    const/16 v2, 0x14

    const-string v4, "UPLOAD_IMAGE"

    const-string v5, "The image-upload route was called and returned a link"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->UPLOAD_IMAGE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 22
    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v2, "SERVER_ERROR"

    const/16 v3, 0x15

    const-string v5, "SERVER_ERROR"

    const-string v6, "Error connecting to the server"

    move-object v1, v0

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 23
    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v2, "NETWORK_ERROR"

    const/16 v3, 0x16

    const-string v5, "NETWORK_ERROR"

    const-string v6, "Network connection error"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 24
    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    sget-object v13, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->WARNING:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v8, "PROVIDER_INSTALL_FAILURE"

    const/16 v9, 0x17

    const-string v11, "PROVIDER_INSTALL_FAILURE"

    const-string v12, "Security Provider is a Google API to improve quality in the device. We test it in the SDK start, and if it fails, we close the SDK with a failure."

    move-object v7, v0

    move-object v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PROVIDER_INSTALL_FAILURE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 25
    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v2, "SERVER_DOWN"

    const/16 v3, 0x18

    const-string v5, "SERVER_DOWN"

    const-string v6, "The quality verification route is down"

    move-object v1, v0

    move-object v4, v13

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_DOWN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    .line 26
    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const-string v2, "CAMERA_START_FAILED"

    const/16 v3, 0x19

    const-string v5, "CAMERA_START_FAILED"

    const-string v6, "The SDK couldn\'t start camera. This failure can happen, and this analytics helps in troubleshooting"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAMERA_START_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    invoke-static {}, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->a()[Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->$VALUES:[Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->eventType:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->eventDescription:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/combateafraude/documentdetector/controller/analytics/event/Event;
    .locals 3

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SDK_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_GRANTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_DENIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_TAKEN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_ACCEPTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_REJECTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->DEVICE_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->EMULATOR_DETECTED_ON_METHOD:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->TOKEN_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->QUALITY_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->MEMORY_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->UPLOAD_IMAGE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PROVIDER_INSTALL_FAILURE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_DOWN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAMERA_START_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/analytics/event/Event;
    .locals 1

    const-class v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/controller/analytics/event/Event;
    .locals 1

    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->$VALUES:[Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    return-object v0
.end method


# virtual methods
.method public final getEventDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->eventDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventType()Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->eventType:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    return-object v0
.end method
