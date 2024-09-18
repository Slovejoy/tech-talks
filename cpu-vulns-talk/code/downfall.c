if (copySize < sizeof(local) &&
  copySize+index < sizeof(source))
    memcpy(local, source+index, copySize)
    
if (copySize >= sizeof(local) ||
  copySize+index >= sizeof(source))
    copySize = 0
memcpy(local, source+index, copySize)

if (copySize < sizeof(local))
  memcpy(local, source+index, copySize)
